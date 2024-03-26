class Robot:
    def __init__(self, robot_name: str):
        self.robot_name = robot_name

    def say_hello(self):
        print(f"Hello, my name is {self.robot_name}!")
