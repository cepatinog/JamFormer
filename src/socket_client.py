import socket
import json
import time
import re
import subprocess

def detect_windows_ip():
    """Detect the IP address of the Windows host from WSL."""
    try:
        result = subprocess.run(
            ["ip", "route"],
            capture_output=True,
            text=True,
            check=True
        )
        for line in result.stdout.splitlines():
            if line.startswith("default via"):
                return line.split()[2]  # IP is the 3rd word in line
    except Exception as e:
        print(f"⚠️ Could not auto-detect Windows IP: {e}")
    return "127.0.0.1"  # Fallback to localhost


def send_melody_to_windows(note_sequence, port=5005):
    """Send a melody sequence to the Windows MIDI server."""
    host = detect_windows_ip()
    print(f"📡 Connecting to Windows at {host}:{port}...")
    
    message = json.dumps({"notes": note_sequence})
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((host, port))
        s.sendall(message.encode())
        print("✅ Melody sent to Windows.")

# Example melody to test
if __name__ == "__main__":
    test_melody = [
        {"pitch": 60, "velocity": 100, "duration": 0.5},  # C4
        {"pitch": 62, "velocity": 100, "duration": 0.5},  # D4
        {"pitch": 64, "velocity": 100, "duration": 0.5},  # E4
        {"pitch": 65, "velocity": 100, "duration": 0.5},  # F4
        {"pitch": 67, "velocity": 100, "duration": 0.5},  # G4
    ]

    send_melody_to_windows(test_melody)
