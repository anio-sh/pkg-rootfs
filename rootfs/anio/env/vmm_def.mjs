/**
 * This file is needed by anio_vmm
 */

function createDefinitionForEnvironment(env) {
	return {
		run_as: `anio_${env}`,

		logs: `/anio/env/${env}/logs/`,
		control: `/anio/env/${env}/control/`,

		virtio_disks: [
			`/anio/env/${env}/data/os.qcow2`,
			`/anio/env/${env}/data/data.qcow2`,
			`/anio/env/${env}/data/bulk_storage.qcow2`
		]
	}
}

export default {
	prod: {
		...createDefinitionForEnvironment("prod"),

		pin_cpu_ids: [6,7],
		vfio_pcie_addr: [`01:00.0`],
	},

	test: {
		...createDefinitionForEnvironment("test"),

		pin_cpu_ids: [4,5],
		vfio_pcie_addr: [`04:00.0`]
	},

	dev: {
		...createDefinitionForEnvironment("dev"),

		pin_cpu_ids: [2,3],
		vfio_pcie_addr: [`05:00.0`]
	}
}
