.class final Lcom/alipay/mobile/rome/pushservice/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/rome/pushservice/adapter/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iput p2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->b:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
