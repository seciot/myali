.class public Lcom/alipay/mobile/common/media/MediaLoadManager;
.super Ljava/lang/Object;


# static fields
.field public static final MSG_DL_FAIL_MEDIA:I = 0x102

.field public static final MSG_DOWNLOADING_MEDIA:I = 0x104

.field public static final MSG_GET_MEDIA:I = 0x100

.field public static final MSG_PLAYING_MEDIA:I = 0x101

.field public static final MSG_PLAY_FINISH_MEDIA:I = 0x103

.field public static final MSG_REFRESH_Media:I = 0x1

.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/common/media/MediaLoadManager;


# instance fields
.field private c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

.field private d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/Vector;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/concurrent/ConcurrentHashMap;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

.field private m:Landroid/content/Context;

.field private n:Ljava/util/WeakHashMap;

.field private o:Lcom/alipay/mobile/common/transport/TransportCallback;

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/media/MediaLoadManager;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/media/MediaLoadManager;->b:Lcom/alipay/mobile/common/media/MediaLoadManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    new-instance v0, Lcom/alipay/mobile/common/media/MediaLoadManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/media/MediaLoadManager$1;-><init>(Lcom/alipay/mobile/common/media/MediaLoadManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->o:Lcom/alipay/mobile/common/transport/TransportCallback;

    new-instance v0, Lcom/alipay/mobile/common/media/MediaLoadManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/common/media/MediaLoadManager$2;-><init>(Lcom/alipay/mobile/common/media/MediaLoadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->p:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->m:Landroid/content/Context;

    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    new-instance v0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    const-string/jumbo v2, "downloads/"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/downloads/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v1, Lcom/alipay/mobile/common/media/MediaLoadManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "path not exist but fail to create: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->n:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->e:Landroid/os/Handler;

    return-void

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/alipay/mobile/common/media/MediaLoadManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " dir exist,but not directory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/media/MediaLoadManager$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/media/MediaLoadManager$5;-><init>(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/media/MediaLoadManager;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/media/MediaLoadManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/media/MediaLoadManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x100

    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/common/media/MediaLoadManager$OnLoadedMediaCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/media/MediaLoadManager$OnLoadedMediaCallBack;->onLoadedMedia(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/media/MediaLoadManager;)Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/media/MediaLoadManager;)Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/common/media/MediaLoadManager$OnLoadedMediaCallBack;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/media/MediaLoadManager$OnLoadedMediaCallBack;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    if-eqz v0, :cond_0

    const/16 v0, 0x103

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v1, v1, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v2, v2, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    const/16 v0, 0x101

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v1, v1, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v2, v2, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/common/media/MediaLoadManager$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/media/MediaLoadManager$3;-><init>(Lcom/alipay/mobile/common/media/MediaLoadManager;)V

    new-instance v2, Lcom/alipay/mobile/common/media/MediaLoadManager$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/media/MediaLoadManager$4;-><init>(Lcom/alipay/mobile/common/media/MediaLoadManager;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/media/MediaLoadManager;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/media/MediaLoadManager;->b:Lcom/alipay/mobile/common/media/MediaLoadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/media/MediaLoadManager;->b:Lcom/alipay/mobile/common/media/MediaLoadManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/media/MediaLoadManager;->b:Lcom/alipay/mobile/common/media/MediaLoadManager;

    return-object v0
.end method


# virtual methods
.method public clearCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    :cond_3
    return-void
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusByUrl(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v0, v0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->state()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x101

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x104

    goto :goto_0

    :cond_1
    const/16 v0, 0x103

    goto :goto_0
.end method

.method public getVoiceRecorder()Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    return-object v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v0, v0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMediaAsync(Ljava/lang/String;Lcom/alipay/mobile/common/media/MediaLoadManager$OnLoadedMediaCallBack;Landroid/os/Handler;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->state()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->stop()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v0, v0, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/common/media/MediaLoadManager$OnLoadedMediaCallBack;

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a()V

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->c:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/media/MediaLoadManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->o:Lcom/alipay/mobile/common/transport/TransportCallback;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    const/16 v1, 0x104

    invoke-direct {p0, v1, p1, v0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->state()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->stopPlay()V

    const/16 v0, 0x103

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v1, v1, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v2, v2, Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->onBackgound()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->onForeground()V

    return-void
.end method

.method public playAudioFile(Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->stop()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->n:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/media/MediaLoadManager;->a(Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method

.method public playMessageMedia(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public playResoureAudio(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->play(Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;I)V

    :cond_0
    return-void
.end method

.method public startRecordAudio(Ljava/io/File;ILcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->stop()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->l:Lcom/alipay/mobile/common/media/MediaLoadManager$MediaPlaying;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->m:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->startRecordingWithDuration(Landroid/content/Context;Ljava/io/File;ILcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->state()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->stopRecording()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/MediaLoadManager;->d:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->stopPlay()V

    goto :goto_0
.end method
