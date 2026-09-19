"use client";

// A plain submit button that pops a browser "are you sure?" confirmation
// before letting the form actually submit. If the admin clicks "Cancel",
// the delete never happens.
export function ConfirmDeleteButton({
  confirmMessage,
  children,
  className,
}: {
  confirmMessage: string;
  children: React.ReactNode;
  className?: string;
}) {
  return (
    <button
      type="submit"
      onClick={(e) => {
        if (!confirm(confirmMessage)) {
          e.preventDefault();
        }
      }}
      className={className}
    >
      {children}
    </button>
  );
}
