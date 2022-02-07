from __future__ import absolute_import, division, print_function

DOCUMENTATION = """
  lookup: ini
  author: nxblnd
  version_added: "0.9"
  short_description: Get section, key and value from ini files
  description:
      - This lookup returns the section, key and value from ini files
  options:
    _terms:
      description: path(s) of files to read
      required: True
  notes:
    - Made from lookup plugin template in Ansible docs
    - Inspired by https://github.com/wshanks/ansible-fedora/blob/master/lookup_plugins/iterate_ini.py
"""

RETURN = """
config:
  description: List of parsed ini options
  type: list
  elements: dict
  contains:
    option:
      description: Parsed section, option and value
      type: dict
"""

from ansible.errors import AnsibleError, AnsibleParserError
from ansible.plugins.lookup import LookupBase
from ansible.utils.display import Display

from configparser import ConfigParser

__metaclass__ = type

display = Display()


class LookupModule(LookupBase):
    def run(self, terms, variables=None, **kwargs):

        self.set_options(var_options=variables, direct=kwargs)

        # lookups in general are expected to both take a list as input and output a list
        # this is done so they work with the looping construct 'with_'.
        ret = []
        for term in terms:
            lookupfile = self.find_file_in_search_path(variables, "files", term)
            display.debug(f"Reading from file {lookupfile}")

            try:
                if lookupfile:
                    config = ConfigParser()
                    config.optionxform = (
                        str  # Do not convert keys and values to lowercase
                    )
                    config.read(lookupfile)
                    ret = [{"section": section, "option": option, "value": value}
                        for section in config.sections()
                        for item, value in config.items(section)
                    ]
                else:
                    raise AnsibleParserError()
            except AnsibleParserError:
                raise AnsibleError("could not locate file in lookup: %s" % term)

        return ret
