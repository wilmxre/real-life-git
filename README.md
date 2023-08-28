## Rebasing with GitKraken

### 1. Granting Execute Permissions

Before you can run the script, you need to give it the necessary permissions.

```bash
chmod +x <setup>.sh
```

### 2. Running the Script

Execute the script to create the branches and commits as designed.

```bash
./<setup>.sh
```

### 3. Rebasing with GitKraken

Now that our branches and commits are prepared, it's time to handle the rebase in GitKraken.

#### 4.1 Launch GitKraken

- Open GitKraken. If it's your first time, you might have to connect your repositories.

#### 4.2 Navigate to Your Repository

- If you haven't added your repository to GitKraken, do so by clicking on the folder icon on the top-left corner, then `Open a Repo`, and navigate to your repo directory.

#### 4.3 Initiate the Rebase

1. In GitKraken's graph, you should see the branches `mega-base-branch` and `mega-feature-branch`.
2. Ensure you've checked out `mega-feature-branch` by double-clicking it.
3. Right-click on `mega-base-branch` and select the option `Rebase "mega-feature-branch" onto "mega-base-branch"`.

#### 4.4 Resolve Conflicts

- You will be immediately notified of the first conflict.
  - Click on the conflicted file.
  - Use GitKraken's visual tool to resolve the conflict, choosing which changes to keep.
  - Save the resolved file.
  - Mark the file as resolved in GitKraken.
- Click on the `Continue Rebase` button in GitKraken.

- Repeat the conflict resolution process for each of the 4-5 commits that have conflicts or squash the commits if the commits if you're encountering multiple conflicts in a row and want to simplify the process

#### 4.5 Finalize the Rebase

- Once all conflicts are resolved, the rebase will be complete.
- You can now push your changes, but remember this changes the commit history. If collaborating with others, communicate before force pushing.

## Conclusion

You've successfully run a script to set up a complex rebase scenario and have navigated through multiple conflicts using GitKraken's visual tools.
