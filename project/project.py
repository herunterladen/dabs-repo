import yaml

class Module:

    def __file(self,_filename):
        with open(_filename,"r") as stream:
            self.file = yaml.safe_load(stream)["project"]

    def __init__(self,_filename):

        self.__file(_filename)
        self.name        = self.file["name"]
        self.version     = self.file["version"]
        self.description = self.file["description"]
        self.languages   = self.file["languages"]
        self.url         = self.file["url"]
