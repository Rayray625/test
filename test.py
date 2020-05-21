import sys
import logging

def main(argv=None):

    log = logging.getLogger('test')
    log.setLevel(logging.DEBUG)

    console_handler = logging.StreamHandler()
    console_handler.setFormatter(logging.Formatter("%(message)s"))
    log.addHandler(console_handler)

    log.info('Starting something...')
    log.info('Doing something...')
    log.info('Finished something.')

    logging.shutdown()

if __name__=='__main__':
    sys.exit(main(sys.argv[1:]))
