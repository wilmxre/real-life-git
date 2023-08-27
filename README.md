## Kata: Undoing Old Commit & File Changes in Git

### Objective:

Learn to revert changes from an old commit and undo modifications to specific files, enabling you to recover from mistaken changes or retrieve previous versions of code without manually copying and pasting.

---

### Scenario:

Imagine you've been diligently committing your work, but after several commits, you realize that one of the older commits introduced an error, or you simply need to undo a specific change to a file. Instead of manually fixing the code or copying from an older file version, you can use Git's built-in mechanisms to revert or checkout to save time and avoid potential errors.

---

### Tasks:

#### 1. Reverting an Old Commit:

1.1. To find the commit you need to undo, use:

```bash
git log
```

This will display the commit history. Use the arrow keys to navigate.

1.2. Once you've identified the problematic commit, note its hash.

1.3. Revert the old commit with:

```bash
git revert [saved hash]
```

Git will create a new commit that undoes the changes of the specified commit.

1.4. Follow the prompts to edit the new commit message or save and finalize the commit.

**Note**: This method undoes the changes introduced in the specified commit, but does so by creating a new commit. It doesn't alter the commit history.

#### 2. Undoing Changes to a Specific File:

2.1. To find a version of the file before it was altered, inspect the commit history:

```bash
git log
```

Use the arrow keys to navigate and find the appropriate commit. Note its hash.

2.2. To revert the file to its state from the desired commit, use:

```bash
git checkout [saved hash] -- path/to/file
```

This will bring the older version of the file into your current working area.

2.3. Commit the change with a message:

```bash
git commit -m "Reverted file to an older state"
```

---

### Notes:

1. **Revert vs. Manual Undo**: With Git's `revert` command, there's no need to manually copy the old file contents to undo changes. It provides a streamlined way to reverse problematic commits.

2. **Undoing Specific Files**: While `revert` operates on entire commits, if you only want to undo changes to a specific file, the `checkout` command comes in handy. However, the naming of `checkout` for this operation can be counterintuitive.

3. **Commit History**: Both methods preserve the commit history, ensuring traceability of changes. Using `revert` creates a new commit to undo the changes, while `checkout` allows you to bring back a previous version of a file.

---

### Challenges:

1. **Multiple File Reverts**: Try reverting changes from multiple files from different commits. How can you do this in the least number of steps?
2. **Branch Management**: Create a new branch (`feature-y`) and make some changes. Can you revert a commit made in the `feature-x` branch while you're in the new branch?

---

**Happy Version Controlling!**
