.class final Lcom/alipay/mobile/alipassapp/ui/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/da;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/da;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/da;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/da;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/da;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/da;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/da;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/da;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/da;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/da;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/da;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/da;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/io/File;

    const-string/jumbo v0, "/sdcard/aWxvdmV5b3U.png"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/da;->d:Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/da;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/da;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/da;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_4
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_7
    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method
