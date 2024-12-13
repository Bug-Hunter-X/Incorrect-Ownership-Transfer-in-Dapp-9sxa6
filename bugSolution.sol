function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  owner_ = newOwner; // Update the owner variable before emitting the event
  emit OwnershipTransferred(owner(), newOwner);
}
