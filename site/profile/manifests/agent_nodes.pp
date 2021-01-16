class profile::agent_nodes {
  include docker::agent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
}
