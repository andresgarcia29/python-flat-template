import os

from robot.robot import Robot


def main():
    robot = Robot(os.getenv("ROBOT_NAME", "NoName"))
    robot.say_hello()


if __name__ == "__main__":
    main()
