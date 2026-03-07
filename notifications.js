/** * Securedly Notification System
 * Handles dynamic loading and UI state for updates
 */

const notificationData = [
    { title: "Version 2.0.4", text: "Encryption speed optimized by 40%.", time: "Just now" },
    { title: "New Tool", text: "IP Reputation check is now in beta.", time: "2h ago" },
    { title: "Security Tip", text: "Enable hardware entropy for stronger keys.", time: "Yesterday" }
];

function toggleNotifs() {
    const menu = document.getElementById('notifMenu');
    const content = document.getElementById('notifContent');
    const badge = document.getElementById('badge');

    if (menu.style.display === 'block') {
        menu.style.display = 'none';
    } else {
        menu.style.display = 'block';
        if(badge) badge.style.display = 'none'; // Hide badge when read
        
        // Load notifications dynamically
        content.innerHTML = notificationData.map(n => `
            <div class="notif-item">
                <strong>${n.title}</strong>
                ${n.text}
                <div style="font-size: 0.7rem; color: #484f58; margin-top: 4px;">${n.time}</div>
            </div>
        `).join('');
    }
}
