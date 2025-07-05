import cdsPlugin from '@sap/eslint-plugin-cds'
import cds from '@sap/cds/eslint.config.mjs'
export default [ ...cds.recommended, cdsPlugin.configs.recommended ]
