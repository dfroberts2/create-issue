# Create-Issue

Create-Issue is a command line tool that allows users to post issues to public code repositories like GitHub and BitBucket. Users enter the repository URL, their issue body and title and their remote repository credentials.

## Getting Started
Create-Issue is easy to configure on your Unix/Linux machine. Just follow these steps:

First, clone the repository. You can clone to wherever you like. Just remember where you put it! Enter the following command to your terminal once you've navigated to the proper file location.

```
$ git clone https://github.com/dfroberts2/create-issue.git
```

Now, make the create-issue file executable. Enter the following command (assuming you are in the create-issue directory):
```
$ chmod +x bin/create-issue
```

Now lastly, we have to add the project root to the PATH environment. We have a couple options. If you want to just try out the command without having the project persist in your PATH enter the following command. Note the [your-absolute-path-here]. This depends on where you cloned the repository. It must start from the root.

```
$ export PATH="[your-absolute-path-here]/create-issue/bin:$PATH"
```

If you wish to more permanently add the command to your machine and don't wish to enter the above command every time you want to use Create-Issue, copy the above command and paste it to the end of the .bashrc file.


Finally, we must run bundler. Using this command assumes you have ruby and bundler install on your machine. To run bundler enter the following command (assuming you are in the bin folder):

```
$ bundle install
```

## Using Create-Issue
To use Create-Issue, enter:

```
$ create-issue
```

After this, you will be prompted to enter all of the necessary issue to post an issue on a remote code hub.

If you enter invalid credentials, a non existent repository on GitHub or BitBucket, or don't have permission to enter an issue on a given repository, an error WILL be returned.