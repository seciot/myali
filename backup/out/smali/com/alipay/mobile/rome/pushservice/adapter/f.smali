.class final Lcom/alipay/mobile/rome/pushservice/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/pushservice/adapter/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/f;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/f;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/f;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    return-void
.end method
