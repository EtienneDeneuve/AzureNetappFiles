provider "azurerm" {
  features {}
}

data "azurerm_subscription" "primary" {
  
}

resource "azurerm_role_definition" "tf-anf-va" {
  name        = "Azure NetApp Files - Volumes Administrator"
  scope       = data.azurerm_subscription.primary.id
  description = "Full right on Azure NetApp Files Volumes"
  permissions {
    actions = [
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/MountTargets/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/read"
    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}

resource "azurerm_role_definition" "tf-anf-sa" {
  name        = "Azure NetApp Files - Snapshot Administrator"
  scope       = data.azurerm_subscription.primary.id
  description = "Full right on Azure NetApp Files Snapshot"
  permissions {
    actions = [
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/ListVolumes/action",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/delete",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/write",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots/read"
    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}

resource "azurerm_role_definition" "tf-anf-ba" {
  name        = "Azure NetApp Files - Backup Administrator"
  scope       = data.azurerm_subscription.primary.id
  description = "Full right on Azure NetApp Files Volumes"
  permissions {
    actions = [
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/backups/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/backups/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/backups/read",
      "Microsoft.NetApp/netAppAccounts/backupPolicies/delete",
      "Microsoft.NetApp/netAppAccounts/backupPolicies/write",
      "Microsoft.NetApp/netAppAccounts/backupPolicies/read",
      "Microsoft.NetApp/netAppAccounts/accountBackups/delete",
      "Microsoft.NetApp/netAppAccounts/accountBackups/write",
      "Microsoft.NetApp/netAppAccounts/accountBackups/read"
    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}

resource "azurerm_role_definition" "tf-anf-ga" {
  name        = "Azure NetApp Files - Global Administrator"
  scope       = data.azurerm_subscription.primary.id
  description = "Full right on Azure NetApp Files"
  permissions {
    actions = [
      "Microsoft.NetApp/Operations/read",
      "Microsoft.NetApp/locations/operationresults/read",
      "Microsoft.NetApp/locations/checkfilepathavailability/action",
      "Microsoft.NetApp/locations/checknameavailability/action",
      "Microsoft.NetApp/locations/read",
      "Microsoft.NetApp/netAppAccounts/vaults/read",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/ListVolumes/action",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/delete",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/write",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ReplicationStatus/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/MountTargets/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/backups/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/backups/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/backups/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/DeleteReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ResyncReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/AuthorizeReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ReInitializeReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ReplicationStatus/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/BreakReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/Revert/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/read",
      "Microsoft.NetApp/netAppAccounts/backupPolicies/delete",
      "Microsoft.NetApp/netAppAccounts/backupPolicies/write",
      "Microsoft.NetApp/netAppAccounts/backupPolicies/read",
      "Microsoft.NetApp/netAppAccounts/accountBackups/delete",
      "Microsoft.NetApp/netAppAccounts/accountBackups/write",
      "Microsoft.NetApp/netAppAccounts/accountBackups/read",
      "Microsoft.NetApp/netAppAccounts/delete",
      "Microsoft.NetApp/netAppAccounts/write",
      "Microsoft.NetApp/netAppAccounts/read",
      "Microsoft.NetApp/unregister/action",
      "Microsoft.NetApp/register/action"
    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}

resource "azurerm_role_definition" "tf-anf-pa" {
  name        = "Azure NetApp Files - Capacity Pool Administrator"
  scope       = data.azurerm_subscription.primary.id
  description = "Full right on Azure NetApp Files Capacity Pool"
  permissions {
    actions = [
      "Microsoft.NetApp/netAppAccounts/capacityPools/delete",
      "Microsoft.NetApp/netAppAccounts/capacityPools/write",
      "Microsoft.NetApp/netAppAccounts/capacityPools/read"
    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}

resource "azurerm_role_definition" "tf-anf-ra" {
  name        = "Azure NetApp Files - Replication Administrator"
  scope       = data.azurerm_subscription.primary.id
  description = "Full right on Azure NetApp Files Replication"
  permissions {
    actions = [
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/DeleteReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ResyncReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/AuthorizeReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ReInitializeReplication/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ReplicationStatus/action",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/BreakReplication/action"

    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}

resource "azurerm_role_definition" "tf-anf-ro" {
  name        = "Azure NetApp Files - Read Only"
  scope       = data.azurerm_subscription.primary.id
  description = "Read Only right on Azure NetApp Files Replication"
  permissions {
    actions = [
      "Microsoft.NetApp/Operations/read",
      "Microsoft.NetApp/locations/operationresults/read",
      "Microsoft.NetApp/locations/read",
      "Microsoft.NetApp/netAppAccounts/vaults/read",
      "Microsoft.NetApp/netAppAccounts/snapshotPolicies/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/ReplicationStatus/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/MountTargets/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/backups/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/read",
      "Microsoft.NetApp/netAppAccounts/backupPolicies/read",
      "Microsoft.NetApp/netAppAccounts/accountBackups/read",
      "Microsoft.NetApp/netAppAccounts/read"

    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id
  ]
}

