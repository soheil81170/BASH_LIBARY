# Load the kubectl completion code for bash into the current shell
source <(kubectl completion bash)

# Write bash completion code to a file and source if from .bashrc
echo 'source <(kubectl completion bash)' >>~/.bashrc

# Setup autocompletion in the current shell, bash-completion package should be installed first. 
echo 'source <(kubeadm completion bash)' >>~/.bashrc

# Load the kubeadm completion code for bash into the current shell
source <(kubeadm completion bash)

#Keep in mind that you might have to restart your shell or source your .bashrc after running this for the changes to take effect. The commands like source ~/.bashrc can be used to apply changes.
#keep in mind owner of file is so important and it should be user whom wants use this bash completion

