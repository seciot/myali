.class public Lcom/alipay/mobile/rome/pushservice/adapter/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Landroid/app/Activity;

.field c:Landroid/os/Handler;

.field d:Z

.field e:Z

.field f:Ljava/io/File;

.field g:Ljava/lang/String;

.field private h:Landroid/app/ProgressDialog;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->c:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/io/File;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    const-string/jumbo v2, "alipay.apk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/alipay.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveStream fileLocation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v2, 0x1400

    new-array v2, v2, [B

    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    div-int/lit16 v4, v0, 0x400

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_1
    iget-boolean v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_1
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/rome/pushservice/d;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->g:I

    new-instance v2, Lcom/alipay/mobile/rome/pushservice/adapter/f;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/f;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->f:I

    new-instance v2, Lcom/alipay/mobile/rome/pushservice/adapter/g;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/g;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/rome/pushservice/adapter/b;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/rome/pushservice/adapter/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/rome/pushservice/adapter/d;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/rome/pushservice/d;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/alipay/mobile/rome/pushservice/adapter/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/h;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/rome/pushservice/adapter/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/rome/pushservice/adapter/c;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/rome/pushservice/d;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->c:I

    new-instance v2, Lcom/alipay/mobile/rome/pushservice/adapter/e;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/e;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/alipay.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v3, 0xafc8

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getDataSource2 file size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-wide v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->i:J

    long-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->h:Landroid/app/ProgressDialog;

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->c:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/rome/pushservice/adapter/i;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/i;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    goto :goto_0
.end method
