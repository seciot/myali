.class final Lcom/alipay/mobile/about/ui/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bucket_id = ?"

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    iget-object v4, p0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/alipay/mobile/about/ui/b/b;

    invoke-direct {v5, v2, v3, v4}, Lcom/alipay/mobile/about/ui/b/b;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->e(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/about/ui/aj;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/about/ui/aj;-><init>(Lcom/alipay/mobile/about/ui/ai;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
