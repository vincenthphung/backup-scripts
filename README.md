# pCloud Automated Backup System for macOS

This repository houses a shell script tailored for macOS users to automate the process of backing up specified directories to their pCloud Drive. The script is set to run daily, providing a reliable means to ensure your important data is safeguarded in the cloud.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
  - [Manual Execution](#manual-execution)
  - [Scheduled Execution](#scheduled-execution)
- [Monitoring](#monitoring)
- [Restoration Procedure](#restoration-procedure)
- [Troubleshooting Guide](#troubleshooting-guide)
- [How to Contribute](#how-to-contribute)
- [Licensing](#licensing)
- [Acknowledgments](#acknowledgments)

## Prerequisites

- An active pCloud account with ample storage space.
- pCloud Drive must be installed and actively syncing on your macOS device. Ensure it's mounted correctly at the following location: `/Users/vincentphung/pCloud Drive`.

## Installation

1. Verify the operational status of your pCloud Drive on your Mac.
2. Obtain the backup script by cloning this repository or downloading it directly into a directory on your machine:

    ```bash
    git clone https://github.com/yourusername/backup-scripts.git ~/backup-scripts
    ```

3. Alter the script permissions to allow execution:

    ```bash
    chmod +x ~/backup-scripts/backup.sh
    ```

## Configuration

Adjust the `backup.sh` script to specify which directories you wish to include in the backup process.

1. Open the script in a text editor:

    ```bash
    nano ~/backup-scripts/backup.sh
    ```

2. Amend the `SOURCE_DIRS` array to reflect the paths of the directories to be backed up:

    ```bash
    SOURCE_DIRS=("$HOME/Documents" "$HOME/Pictures")
    ```

## Usage

### Manual Execution

To perform a backup at any time:

```bash
~/backup-scripts/backup.sh
```

### Scheduled Execution

A cron job is employed to automate the backup script, configured to activate at 3:30 AM each day:

```bash
crontab -e
```

The cron schedule is delineated as:

```cron
30 3 * * * /Users/vincentphung/backup-scripts/backup.sh
```

## Monitoring

The script maintains a log of each backup attempt. To examine the most recent log entries:

```bash
cat ~/backup-scripts/backup.log
```

These logs are pivotal in affirming the success of the backups and troubleshooting potential issues.

## Restoration Procedure

To restore files from a backup:

1. Open Finder and navigate to your pCloud Drive.
2. Identify and select the backup folder of choice, which will be timestamped.
3. Manually transfer the required files back to a location on your local system.

## Troubleshooting Guide

Should issues arise:

- Confirm the pCloud Drive is properly mounted and accessible.
- Check that your Mac did not enter sleep mode when the backup was scheduled.
- Peruse the `backup.log` file for any indications of errors or operation outcomes.

## How to Contribute

Contributions are welcomed and greatly valued. From script enhancements to documentation improvements, or issue reporting—your input can significantly benefit the project. For a comprehensive guide on how to make contributions, please consult the [CONTRIBUTING.md](https://github.com/yourusername/backup-scripts/blob/master/CONTRIBUTING.md) file.

## Licensing

This project is disseminated under the terms of the MIT License. For further details, please refer to the [LICENSE.md](https://github.com/yourusername/backup-scripts/blob/master/LICENSE) file.

## Acknowledgments

- Kudos to the pCloud team for their robust and user-friendly cloud storage solution.
- Immense gratitude is extended to all the contributors who have tested, documented, and refined this backup system.
