TEST_NBS=$(find ../nbs_tests -name "*.ipynb")
TUTORIAL_NBS=$(find ../docs/tutorials -name "*.ipynb")
UNIT_TESTS=$(find ../tests/unit -name "test_*.py")
ALL_NBS=$(echo $TEST_NBS$'\n'$TUTORIAL_NBS$'\n'$UNIT_TESTS)
python -m pytest --nbmake $(echo $ALL_NBS)
