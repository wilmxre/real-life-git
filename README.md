## Kata: Mastering Git Bisect

### Objective:

Learn to use `git bisect` to efficiently pinpoint the commit that introduced a bug.

---

### Scenario:

You've recently discovered a bug in your project, and you're unsure which commit introduced it. The `git bisect` command provides a way to perform a binary search through your commit history, helping you identify the problematic commit quickly.

---

### Tasks:

#### 1. Granting Execute Permissions

Before you can run the script, you need to give it the necessary permissions.

```bash
chmod +x <setup>.sh
```

#### 2. Running the Script

Execute the script to create the commits as designed.

```bash
./<setup>.sh
```

#### 3. Start Bisecting:

Begin the `git bisect` process:

```bash
git bisect start
```

#### 4. Mark the Bad and Good Commits:

Let Git know a commit where the bug exists and a commit before the bug was introduced:

```bash
git bisect bad <commit-hash-with-bug>
git bisect good <commit-hash-without-bug>
```

#### 5. Test and Mark Commits:

Git will checkout a commit in the middle of the good and bad range. Test your project at this commit.

If the bug is present:

```bash
git bisect bad
```

If the bug is absent:

```bash
git bisect good
```

Git will continue to narrow down the range until it identifies the first bad commit.

#### 6. Finish Bisecting:

Once Git identifies the problematic commit, end the bisect session:

```bash
git bisect reset
```

This will take you back to where you started, typically the branch you were on before bisecting.

---

### Notes:

1. **Binary Search**: The `git bisect` command utilizes the principle of binary search, thus quickly narrowing down the problematic commit even in a long commit history.

2. **Automation**: You can automate `git bisect` with scripts if you have a scriptable way to determine if a commit is good or bad.

3. **Visualizing Bisect**: If you're using a GUI for Git, many of them visualize the bisecting process, making it easier to understand which commits are being tested.

---

### Challenges:

1. **Automate Bisect with a Script**: If you have a test script that returns `0` for success and `1` for failure, you can use it with `git bisect run <your-script>`. Can you set up such a script and automate the bisect process?

2. **Skip a Commit**: Suppose you encounter a commit during bisecting that's neither clearly good nor bad (e.g., it won't build). Learn how to use `git bisect skip` to skip such commits.

3. **Visual Bisecting**: Use a Git GUI tool to visualize the bisect process. How does the visualization assist in understanding the bisect procedure?

---

**Use Git Bisect Wisely and Track Down Those Bugs Efficiently!**
