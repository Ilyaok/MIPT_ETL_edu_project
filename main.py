import os
import pandas as pd

from py_scripts.terminals_STG_pipeline import terminals_to_staging
from py_scripts.logger import create_logger
from py_scripts.utils import get_jaydebeapi_connection, check_connection


def main():

    path_to_project = os.getcwd()

    logger = create_logger(path_to_project)
    logger.info(f'Starting {path_to_project}/{__name__}')

    logger.info(f'Connecting to Oracle...')

    conn = get_jaydebeapi_connection(path=path_to_project, logger=logger)
    check_connection(conn, logger)

    try:
        terminals_to_staging(conn=conn, path=path_to_project, logger=logger)
    except Exception as e:
        logger.info(f'Function "terminals_to_staging" failed with Exception: {e}')
        logger.info(f'ETL-process stopped')
        conn.close()
        return 1

    conn.close()

    logger.info(f'Connection closed')


if __name__ == "__main__":
    main()