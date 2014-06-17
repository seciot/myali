.class final Lcom/alipay/mobile/alipassapp/ui/en;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/em;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/em;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/en;->a:Lcom/alipay/mobile/alipassapp/ui/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/en;->a:Lcom/alipay/mobile/alipassapp/ui/em;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/em;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->SLIDED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "loadMore"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/en;->a:Lcom/alipay/mobile/alipassapp/ui/em;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/em;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/en;->a:Lcom/alipay/mobile/alipassapp/ui/em;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/em;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->e:Lcom/alipay/mobile/alipassapp/biz/model/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/c;->e()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/en;->a:Lcom/alipay/mobile/alipassapp/ui/em;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/em;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;->a()V

    return-void
.end method
