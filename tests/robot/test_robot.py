from robot.robot import Robot


def test_robot_init():
    robot = Robot("Robbie")
    assert robot.robot_name == "Robbie"


def test_robot_say_hello(capsys):
    robot = Robot("Robbie")
    robot.say_hello()
    captured = capsys.readouterr()
    assert captured.out == "Hello, my name is Robbie!\n"


def test_robot_say_hello_different_name(capsys):
    robot = Robot("Alice")
    robot.say_hello()
    captured = capsys.readouterr()
    assert captured.out == "Hello, my name is Alice!\n"
