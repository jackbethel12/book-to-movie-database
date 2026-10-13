// Invisible to real visitors (off-screen, not display:none — some bots
// skip fields hidden that way — and out of the tab order and screen-reader
// tree), but a form-filling bot that blindly fills in every input will
// still find and fill it. The server action checks it; see lib/honeypot.ts.
export function HoneypotField() {
  return (
    <input
      type="text"
      name="website"
      tabIndex={-1}
      autoComplete="off"
      aria-hidden="true"
      className="absolute -left-[9999px] h-0 w-0 opacity-0"
    />
  );
}
