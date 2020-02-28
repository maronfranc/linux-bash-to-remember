#!/bin/bash
#
# Sai da branch atual dá git checkout e pull na develop e volta
# até a branch atual e dá pull da develop pra branch atual

git_pull_dev () {
	currentBranch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p') &&
	git checkout develop &&
	echo "----- ----- Dando pull na develop ----- -----" &&
	git pull origin develop &&
	echo "----- ----- Voltando para $currentBranch ----- -----" &&
	git checkout $currentBranch &&
	echo "----- ----- Dando pull da Develop para $currentBranch" &&
	git pull origin develop
}
alias pd="git_pull_dev"
