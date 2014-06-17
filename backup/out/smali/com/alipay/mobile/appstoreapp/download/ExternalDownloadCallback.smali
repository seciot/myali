.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;
.super Ljava/lang/Object;
.source "ExternalDownloadCallback.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Landroid/app/Notification;

.field private e:Landroid/app/NotificationManager;

.field private f:I

.field private g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

.field private h:Landroid/support/v4/content/LocalBroadcastManager;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x698

    sput v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/16 v2, 0x698

    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    .line 43
    iput v5, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->f:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->h:Landroid/support/v4/content/LocalBroadcastManager;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    .line 59
    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isShowRunningNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    const v1, 0x186a0

    if-le v0, v1, :cond_0

    sput v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    :cond_0
    sget v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a:I

    iput v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0b\u8f7d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "layout"

    const-string/jumbo v4, "download_progress"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_bar"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_title_txt"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "command"

    const-string/jumbo v4, "cancel"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "downloadUrl"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "update_cancel_btn"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "download_icon"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "cancel"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "request"

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "cancelDownloadConfirm"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 61
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 266
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 270
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "downloadUrl"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "downloadRequest"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "filePath"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x64

    .line 132
    iget v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->f:I

    sub-int v0, p1, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    if-lez p1, :cond_0

    if-ge p1, v4, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a()Landroid/content/Intent;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "downloading"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "progress_text"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "download_process_bar"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, p1, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iput p1, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0b\u8f7d\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->h:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 101
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 257
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 262
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a()Landroid/content/Intent;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()V

    .line 72
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a()Landroid/content/Intent;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "fail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()V

    .line 129
    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x64

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a()Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    const-string/jumbo v1, "\u4e0b\u8f7d\u5b8c\u6210"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "download_process_title_txt"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->g:Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "progress_text"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "100%"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "download_process_bar"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b:I

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->d:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->b()V

    .line 97
    :cond_0
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a()Landroid/content/Intent;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "prepare"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(Landroid/content/Intent;)V

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(I)V

    .line 85
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    const-wide/high16 v0, 0x4059

    mul-double/2addr v0, p2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadCallback;->a(I)V

    .line 115
    return-void
.end method
