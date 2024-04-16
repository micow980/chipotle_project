import pandas as pd

if 'data_loader' not in globals():
    from mage_ai.data_preparation.decorators import data_loader
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@data_loader
def load_data(*args, **kwargs):

    # Direct link to the TSV file
    url = 'https://raw.githubusercontent.com/justmarkham/DAT8/master/data/chipotle.tsv'

    # Read the TSV file directly from the URL
    df = pd.read_csv(url, sep='\t')

    return df


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'