return {
  "coder/claudecode.nvim",
  opts = {
    terminal = {
      provider = "external",
      provider_opts = {
        external_terminal_cmd = function(cmd, _)
          local cwd = vim.fn.getcwd()
          return {
            "sh",
            "-c",
            [[
            PANE=$(tmux list-panes -F "#{pane_id} #{@is_claudecode}" | awk '$2=="1" {print $1}')
            if [ -z "$PANE" ]; then
                PANE=$(tmux split-window -h -l 70 -c "$1" -P -F "#{pane_id}" "$2")
                tmux set-option -p -t "$PANE" @is_claudecode 1
            else
                tmux select-pane -t "$PANE"
            fi
            ]],
            "--",
            cwd,
            cmd,
          }
        end,
      },
    },
  },
}
