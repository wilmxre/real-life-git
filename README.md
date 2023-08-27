## Kata: Recovering Deleted Files in Git

### Objective:

Learn to recover accidentally deleted files using Git, ensuring you don't lose precious work due to unintended file removals.

---

### Scenario:

While working on your project, you realize that you've accidentally deleted a crucial file. Panic sets in as hours of work seem to have vanished. But fear not! If you've been using Git, there are mechanisms to recover these deleted files.

---

### Tasks:

#### 1. Recovering a File Deleted but Not Committed:

1.1. If you've accidentally deleted a file but haven't yet committed the change, you can recover it using:

```bash
git checkout HEAD -- path/to/deleted/file
```

This will restore the deleted file to its state from the latest commit.

#### 2. Recovering a File from a Previous Commit:

2.1. First, identify the commit where the file existed. Use the following command:

```bash
git log --full-history -- [file path]
```

2.2. Once you've identified the commit hash where the file was present, checkout the file from that commit:

```bash
git checkout [commit_hash] -- path/to/deleted/file
```

This command will retrieve the file as it existed in the specified commit.

#### 3. Recovering After Committing the Deletion:

3.1. If you've deleted the file and committed the change, you can still get it back. First, find the last commit before the file deletion:

```bash
git log -- [file path]
```

3.2. Revert the commit where the file was deleted:

```bash
git revert [commit_hash]
```

This will create a new commit that undoes the changes from the specified commit, effectively restoring the deleted file.

---

### Notes:

1. **File Versions**: When recovering files, remember that you're retrieving the version of the file from a particular commit. If there were changes after that commit, those won't be present in the recovered file.

2. **Commit Regularly**: One of the many advantages of using version control systems like Git is the ability to recover from mistakes. Regular commits provide finer granularity, making it easier to revert or adjust specific changes.

3. **Local vs Remote**: These recovery methods apply to local repositories. If you've pushed deletions to a remote repository, the process might involve more steps, especially if others have pulled the changes.

---

### Challenges:

1. **File Renaming**: Suppose you've renamed a file and later realized you want both the new file and the original one with its old name. How would you achieve this using Git?
2. **Dealing with Directories**: Try recovering a whole directory you've deleted. How does this process differ from recovering individual files?

---

**Stay Safe and Keep Committing!**
