// A honeypot catches simple bots that fill in every field of a form,
// including ones a real visitor never sees or interacts with. Checking it
// server-side (not just hiding it with CSS) is what actually matters —
// hiding a field doesn't stop a submission, it just gives us something to
// filter on.
export function isHoneypotFilled(formData: FormData): boolean {
  const value = formData.get("website");
  return typeof value === "string" && value.trim().length > 0;
}
