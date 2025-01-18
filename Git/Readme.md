Source Code Management Tool: Git
-------------------------------------------------------------------
Introduction to Source Code Management (SCM) Tools

Source Code Management (SCM) tools are essential for tracking and managing code changes in software development projects. Git is a widely used SCM tool known for its distributed architecture and robust feature set.

Lifecycle of Git
-----------------------------------------------------------------------------
Initialization: Create a new repository using git init.

Staging: Add files to the staging area using git add.

Commit: Record changes in the repository using git commit.

Branching: Create new branches for feature development using git branch.

Merging: Combine branches using git merge.

Pull and Push: Synchronize local changes with remote repositories using git pull and git push.

Practical Example: Using Git Commands
----------------------------------------------------------------
```bash
# Initialize a repository
git init

# Add files to staging
git add .

# Commit changes
git commit -m "Initial commit"

# View commit logs
git log

# Revert to a previous commit
git revert <commit-hash>

# Restore a file to its last committed state
git restore <file-name>
```

Git Branch, Common Types of Branches, Checkout, Diff, Merge
------------------------------------------------------------------------------
Branches: Feature, Development, Main/Master, Bugfix branches.

Checkout: Switch between branches using git checkout <branch-name>.

Diff: Compare changes using git diff.

Merge: Merge branches using git merge <branch-name>.


Git Workflow Explained
-------------------------------------------------------------------
1.Clone the repository: git clone <repo-url>.

2.Create a feature branch: git checkout -b <feature-branch>

3.Make changes and commit: git add . && git commit -m "Description".

4.Push changes: git push origin <feature-branch>.

5.Create a pull/merge request.

6.Merge the branch into the main branch after review.

How to Resolve Conflicts
----------------------------------------------------------
Identify the conflicting files during the merge process.

Open the files and manually resolve conflicts.

Mark conflicts as resolved: git add <file-name>.

Commit the merge: git commit.