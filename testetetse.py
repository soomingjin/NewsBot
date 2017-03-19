import newspaper
import re

class Test:
  def __init__(self, category):
    self.sources = newspaper.build("http://cnn.com")
    self.category = category

  def build_object(self):
    regex_pattern = re.compile("tech")
    for self.category in sources.category_urls():
      if (regex_pattern.match(self.category)):
        self.sources = newspaper.build(re.sub(r"^u\'", "", category))

  def show_result(self):
    finalresult = self.sources.articles[0].download()
    parsedresult = finalresult.parse()
    toreturn = parsedresult.text
    return toreturn
