# Kata: Branch Commit Recovery

**Objective**: Understand how to rectify mistakes when committing to the wrong Git branch. Mistakes happen; let's learn to correct them effectively.

---

**Scenario**: Imagine you're working on your `feature x` branch and you make a commit. Suddenly, you realize this commit should have been on a different branch or even a new branch. How can you migrate that commit without making a mess?

## Tasks:

### For Scenario 1: Accidentally committing to `feature x` when it should have been on a new branch:

1. Create a new branch from the current state of `master`:
   ```
   git branch <some-new-branch-name>
   ```
2. Remove the last commit from the `feature x` branch:
   ```
   git reset HEAD~ --hard
   ```
3. Move to your new branch:
   ```
   git checkout <some-new-branch-name>
   ```

### For Scenario 2: Committing to a wrong branch when it should have been on another existing branch:

1. Undo the last commit but keep the changes:
   ```
   git reset HEAD~ --soft
   git stash
   ```
2. Move to the correct branch:
   ```
   git checkout <name-of-the-correct-branch>
   ```
3. Apply the stashed changes and commit:
   ```
   git stash pop
   git add .
   git commit -m "Your commit message here"
   ```

**Alternative for Scenario 2**:

1. Go to the correct branch:
   ```
   git checkout <name-of-the-correct-branch>
   ```
2. Grab the last commit from the mistaken branch:
   ```
   git cherry-pick <mistaken-branch-name> or <commit-hash> ...
   ```
3. Delete the commit from the mistaken branch:
   ```
   git checkout mistaken-branch-name
   git reset HEAD~ --hard
   ```

## Notes:

- Remember, this approach is effective when commits haven't been pushed to a shared repository. For commits that have been pushed, the approach would differ.
- Always ensure to check your current branch before making a commit; `git status` is your friend!

## Challenges:

1. **Commit History**: After transferring a commit to a correct branch, explore `git log` on both branches. Can you see any remnants of your previous mistaken commit?
2. **Safe Picking**: Instead of stashing, try using `git cherry-pick` in different scenarios. What are the pros and cons compared to the stash-pop approach?
3. **Undoing the Undo**: Let's say you didn't actually make a mistake. How would you undo the operations of `git reset HEAD~`?

<details> 
  <summary>Hint</summary>
   Explore `git reflog` and git reset `HEAD@{x}`
</details>
      
**Happy Branching!**
