## Kata: Mastering Git Rebasing

### Objective:

Learn to use `git rebase` to incorporate updates from the main branch into your feature branch seamlessly.

---

### Scenario:

You've been working on a feature branch for some time, and in the interim, the main branch has received several updates. Instead of merging the main branch into your feature branch (which would create a new merge commit), you want to rebase your branch. This means the new commits on the main branch will be the base for your feature branch changes.

---

### Tasks:

#### 1. Switch to Your Feature Branch:

Ensure you are on your feature branch:

```bash
git checkout feature-branch-name
```

#### 2. Start the Rebase:

Fetch the latest changes from the remote and rebase your feature branch onto the main branch:

```bash
git fetch origin or git pull <main branch>
git rebase origin/main or git rebase <main branch>
```

#### 3. Resolve Conflicts if They Appear:

During rebasing, conflicts might occur. If there's a conflict, Git will pause and allow you to fix those conflicts before continuing.

3.1. Open the files with conflicts and resolve them.

3.2. After resolving, mark the files as resolved:

```bash
git add path/to/resolved-file
```

3.3. Continue the rebase process:

```bash
git rebase --continue
```

#### 4. Complete the Rebase:

Once all conflicts (if any) are resolved, and all commits have been applied, the rebase will finish.

#### 5. Pushing Changes:

Since rebasing rewrites commit history, you'll need to force push your branch if you've previously pushed it to the remote:

```bash
git push origin feature-branch-name --force-with-lease
```

Using `--force-with-lease` is safer than `--force` as it ensures you don't overwrite work someone else might have pushed in the meantime.

---

### Notes:

1. **Rebase vs. Merge**: Rebasing provides a cleaner commit history than merging in situations where you want to integrate changes from one branch into another. However, it rewrites commit history, so be cautious when using it on shared branches.

2. **Safe Force Push**: `--force-with-lease` is a safer alternative to `--force`. It prevents overwriting commits on the remote branch by checking that the remote branch is in the state we expect.

3. **Keeping Up-to-Date**: Regularly rebasing your feature branch onto the main branch ensures you're always working with the latest changes. This can prevent large, difficult-to-resolve conflicts later on.

---

### Challenges:

1. **Interactive Rebase**: Use `git rebase -i` to perform an interactive rebase. This allows you to edit, squash, or reorder commits. Can you squash two or more of your feature branch commits into a single commit?

2. **Abort a Rebase**: Start a rebase, then intentionally create a conflict. How would you abort the rebase operation and return to the state before rebasing?

3. **Rebase onto Different Branch**: Instead of rebasing onto the main branch, try rebasing your feature branch onto another branch. How does this change the commit history?

---

**Rebase Wisely and Keep That Commit History Clean!**
