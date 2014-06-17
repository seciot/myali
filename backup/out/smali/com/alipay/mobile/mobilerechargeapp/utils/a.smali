.class final Lcom/alipay/mobile/mobilerechargeapp/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/utils/SelectAccountListener;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/utils/SelectAccountListener;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/a;->a:Lcom/alipay/mobile/mobilerechargeapp/utils/SelectAccountListener;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/a;->a:Lcom/alipay/mobile/mobilerechargeapp/utils/SelectAccountListener;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/SelectAccountListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
