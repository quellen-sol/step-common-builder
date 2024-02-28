# Add this to your .bashrc file
_build_step_common()
{
	local package_opts="common dex farms integrations-base lending liquidity mobile nest-common nft react staking tokens transaction-history vaults"
	local frontend_opts="step-frontend step-analytics"
	local backend_opts="step-api-services step-indexer step-api-gateway"
	local cur=${COMP_WORDS[COMP_CWORD]}
	case $COMP_CWORD in
		1)
			COMPREPLY=($(compgen -W "${package_opts}" -- $cur))
			;;
		2)
			COMPREPLY=($(compgen -W "${frontend_opts} ${backend_opts}" -- $cur))
			;;
	esac
	return 0
}
complete -F _build_step_common build-common