import glob
import os

relevant_path = '/home/viu_user/Documents/yasiru/mae/data/train/'

included_extensions = ['jpg','jpeg', 'bmp', 'png', 'gif']
file_names = [fn for fn in os.listdir(relevant_path)
              if any(fn.endswith(ext) for ext in included_extensions)]
print(file_names)