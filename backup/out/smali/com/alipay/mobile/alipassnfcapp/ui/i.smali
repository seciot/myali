.class public final Lcom/alipay/mobile/alipassnfcapp/ui/i;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:Z

.field final synthetic c:Lcom/alipay/mobile/alipassnfcapp/ui/h;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/h;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->c:Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->b:Z

    iput-object p2, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/h;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/i;-><init>(Lcom/alipay/mobile/alipassnfcapp/ui/h;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->b:Z

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->c:Lcom/alipay/mobile/alipassnfcapp/ui/h;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->doInBackground(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->c:Lcom/alipay/mobile/alipassnfcapp/ui/h;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onPostExecute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->c:Lcom/alipay/mobile/alipassnfcapp/ui/h;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onPreDoInbackgroud(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/i;->c:Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onUIUpdate([Ljava/lang/Object;)V

    return-void
.end method
