- Show file contents:
  - One file: `cat <file_path>`.
  - Multiple files: `cat <file_path1> <file_path2> <file_path3> <...>`.
- Overwrite `<file_path2>` contents with contents of `<file_path1>`: `cat <file_path1> > <file_path2>`.
- Append `<file_path2>` with contents of `<file_path1>`: `cat <file_path1> >> <file_path2>`.
- You can pass multiple files for to appending or overwriting.
- Sort files contents and overwrite to other file: `cat <file_path1> <file_path2> <file_path3> | sort > <file_path4>`.
