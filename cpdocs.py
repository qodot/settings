import os
import shutil

home = os.path.expanduser('~')
ia_writer_home = os.path.join(home, 'Dropbox/iA Writer/developer')
pelican_content_home = os.path.join(home, 'workspace/blog/content')


def cpdocs():
    for directory in os.listdir(ia_writer_home):
        if directory in ('drafts', '.DS_Store'):
            continue

        src_dir = os.path.join(ia_writer_home, directory)
        des_dir = os.path.join(pelican_content_home, directory)
        if os.path.exists(des_dir):
            shutil.rmtree(des_dir)
        shutil.copytree(src_dir, des_dir)


if __name__ == '__main__':
    cpdocs()
