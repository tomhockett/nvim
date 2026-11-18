-- Minitest adapter for neotest. The lang.ruby extra only wires in neotest-rspec;
-- this adds Minitest alongside it (Rails apps such as rent-roll).
-- Needs the test.core extra enabled in :LazyExtras.
return {
  {
    "nvim-neotest/neotest",
    dependencies = { "zidhuss/neotest-minitest" },
    opts = {
      adapters = {
        ["neotest-minitest"] = {},
      },
    },
  },
}
