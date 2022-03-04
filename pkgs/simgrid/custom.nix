{ simgrid, fetchurl } :

simgrid.overrideAttrs(oldAttrs: rec {
  version = oldAttrs.version + "-custom";
  rev = "57d26848355f0928264339d28412d8b87196d668"; # The desired SimGrid commit.
  src = fetchurl {
    url = "https://framagit.org/simgrid/simgrid/-/archive/${rev}/simgrid-${rev}.tar.gz";
    sha256 = "1ya19x05dzjyn58h4055aq3dai2w8f94wgkb5w38ijf1qaj2607h";
  };
})
