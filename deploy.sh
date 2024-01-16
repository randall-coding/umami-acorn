#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/umami && \
acorn push ghcr.io/randall-coding/acorn/umami && \
acorn run -n umami ghcr.io/randall-coding/acorn/umami