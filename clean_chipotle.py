import pandas as pd

if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@transformer
def transform(data, *args, **kwargs):
    # Remove unnecessary brackets from the 'choice_description' column
    data['choice_description'] = data['choice_description'].str.replace(r'\[|\]', '', regex=True)

    # Explode the DataFrame to get unique chipotle items by new row
    data = data.assign(choice_description=data['choice_description'].str.split(', ')).explode('choice_description')

    return data



@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'