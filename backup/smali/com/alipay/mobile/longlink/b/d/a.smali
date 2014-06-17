.class public Lcom/alipay/mobile/longlink/b/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/longlink/b/d/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/b/d/a;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/b/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/d/a;->b:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/longlink/b/c/a;)V
    .locals 3

    const/4 v2, 0x3

    new-instance v0, Lcom/alipay/mobile/longlink/b/c/f;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/longlink/b/c/f;-><init>(I)V

    invoke-interface {v0, p1}, Lcom/alipay/mobile/longlink/b/c/d;->a(Lcom/alipay/mobile/longlink/b/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/longlink/b/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "processPacket() got one HeartBeatPacket from Server!"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/b/c/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/d/a;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->g()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/longlink/b/c/c;->a(I)Lcom/alipay/mobile/longlink/b/c/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/c/a;->a(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/c/a;->b(I)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/d/a;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/c/a;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/d/a;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->t()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
