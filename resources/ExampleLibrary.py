from Browser import Browser
from robot.libraries.BuiltIn import BuiltIn

class ExampleLibrary:
    """
    Robot Framework custom keyword library example 
    """
    @property
    def browser_lib(self) -> Browser:
        return BuiltIn().get_library_instance("Browser")

    def get_theme(self) -> str:
        """ Gets Playwright homepage theme attribute """
        return self.browser_lib.get_attribute("html", "data-theme")