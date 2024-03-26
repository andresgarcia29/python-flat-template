import sys
import os

# Get src path directory
src_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "../src")

# Add src to sys.path
sys.path.insert(0, src_path)
