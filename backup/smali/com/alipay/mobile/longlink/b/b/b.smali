.class public Lcom/alipay/mobile/longlink/b/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/longlink/b/b/a;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/b/b/b;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/b/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/b/b;->a:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/b/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/k;->c()V

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/b/b/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/b/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v3}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/b/b/b;->b:Ljava/lang/String;

    const-string/jumbo v2, "===== Connected onSuccess()====="

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/b/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/b/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/a;->h()Lcom/alipay/mobile/longlink/b/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/b/c;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/b/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->r()V

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/mobile/longlink/b/b/b;->b:Ljava/lang/String;

    const-string/jumbo v2, "===== Connected onFail()====="

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/b/b;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->m()V

    return-void
.end method
