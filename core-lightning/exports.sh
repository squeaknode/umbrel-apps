export APP_CORE_LIGHTNING_IP="10.21.21.94"
export APP_CORE_LIGHTNING_PORT="2103"
export APP_CORE_LIGHTNING_REST_IP="10.21.21.95"
export APP_CORE_LIGHTNING_REST_PORT="2104"
export APP_CORE_LIGHTNING_DAEMON_IP="10.21.21.96"
export APP_CORE_LIGHTNING_DAEMON_PORT="9736"
export APP_CORE_LIGHTNING_DAEMON_GRPC_PORT="2105"

export APP_CORE_LIGHTNING_REST_CERT_DIR="${EXPORTS_APP_DIR}/data/c-lightning-rest/certs"
export APP_CORE_LIGHTNING_RPC_FILE_DIR="${EXPORTS_APP_DIR}/data/lightningd/rpc"

rest_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-rest/hostname"
export APP_CORE_LIGHTNING_REST_HIDDEN_SERVICE="$(cat "${rest_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
