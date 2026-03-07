/**
 * notifications.js
 */

const notificationData = [
    { title: "Version 2.0.1", text: "Added notifications and settings.", time: "Just now" },
];

function loadNotificationContent() {
    const content = document.getElementById('notifContent');
    if (!content) return;

    // Map the data into HTML strings
    content.innerHTML = notificationData.map(n => `
        <div class="notif-item" style="padding: 10px; border-radius: 8px; font-size: 0.85rem; margin-bottom: 5px; border-bottom: 1px solid rgba(255,255,255,0.05);">
            <strong style="color: #58a6ff; display: block;">${n.title}</strong>
            <span style="color: #c9d1d9;">${n.text}</span>
            <div style="font-size: 0.7rem; color: #484f58; margin-top: 4px;">${n.time}</div>
        </div>
    `).join('');
}
