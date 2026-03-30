#!/usr/bin/env python3
"""Extract text from PDFs in the files/ directory for SLR analysis."""

import sys
import os
import fitz  # PyMuPDF


def extract_text(pdf_path: str, max_pages: int = 0) -> str:
    """Extract all text from a PDF file."""
    doc = fitz.open(pdf_path)
    pages = []
    for i, page in enumerate(doc):
        if max_pages and i >= max_pages:
            break
        pages.append(page.get_text())
    doc.close()
    return "\n\n--- PAGE BREAK ---\n\n".join(pages)


def main():
    if len(sys.argv) < 2:
        print("Usage: python extract_pdf.py <dir_id|pdf_path> [max_pages]")
        print("  dir_id: numeric directory ID under files/")
        print("  pdf_path: direct path to PDF")
        print("  max_pages: optional, limit pages (0 = all)")
        sys.exit(1)

    target = sys.argv[1]
    max_pages = int(sys.argv[2]) if len(sys.argv) > 2 else 0

    # If numeric, look up in files/
    if target.isdigit():
        base = os.path.join(os.path.dirname(__file__), "files", target)
        if not os.path.isdir(base):
            print(f"Directory files/{target} not found")
            sys.exit(1)
        pdfs = [f for f in os.listdir(base) if f.endswith(".pdf")]
        if not pdfs:
            print(f"No PDF found in files/{target}")
            sys.exit(1)
        pdf_path = os.path.join(base, pdfs[0])
    else:
        pdf_path = target

    if not os.path.isfile(pdf_path):
        print(f"File not found: {pdf_path}")
        sys.exit(1)

    print(f"=== Extracting: {os.path.basename(pdf_path)} ===\n")
    text = extract_text(pdf_path, max_pages)
    print(text)


if __name__ == "__main__":
    main()
