require "rexml/document"


class MainsController < ApplicationController
  #caches_page :news, :shownews
  #before_filter :login_required, :only=>[ 'course']
  before_filter :check_tab
   before_filter :find_cart
  def description  
  end


  def inline
    @headers["Content-disposition"] = 'inline; filename="calendar.pdf"'
    render :layout => false
  end
  
  def center  
    # if !session[:user]
      # render :action=>"login"
      # return
    # end 
    render :layout =>"firstpage"   
  end  
  
  def index   
    render :layout =>"firstpage"   
  end
  
  def discription
    render :layout => false  
  end

  def vipnotice
    render :layout => false 
  end
  
  def vipfastservice
    render :layout=>"login"
  end
  
  def foodservice
    render :layout=>"login"
  end
  
  def safeservice
    render :layout=>"login"
  end
  
  def bodystyleservice
    render :layout=>"login"
  end
  
  def secretaryservice
    render :layout=>"login" 
  end
  
  def meetingservice
    render :layout=>"login" 
  end
  
  def timehotelservice
    render :layout=>"login"
  end
  
  def otherservice
    render :layout=>"login"
  end

  def overview
    session[:top_tab]=3
    render :layout =>"firstpage"
  end
  
  def servicetow
    render :layout=>"login"
  end
  
  
  def objectservice
    render :layout =>"firstpage" 
  end
  
  def objectservicetow
    render :layout =>"firstpage" 
  end
  
  def objectservicethird
    render :layout =>"firstpage" 
  end
  
  def service
    render :layout=>"login"
  end
  
  def news
    @news = News.find(params[:id])
    @group = @news.newsgroup
  end
  
  def album
    @albums = Album.find(:all, :order=>"position")
    render :layout=>"all_teams"
  end
  
  def showphotos
    @albums = Album.find(:all, :order=>"position")
    @photos = Photo.paginate :page=>params[:page], :per_page => 12, :conditions=>"album_id = #{params[:id]}"
    
  end
  
  def channel
    @group = Newsgroup.find(params[:id])
    #@news = @group.all_news[0]
    #render :action=>"news"
    # if params[:id].to_i==65
      # render :layout=>"channel" 
    # elsif params[:id].to_i==62
      # render :layout=>"channel_62"
    # elsif params[:id].to_i==63
      # render :layout=>"channel_63"
    # elsif params[:id].to_i==64
      # render :layout=>"channel_64"
    # elsif params[:id].to_i==54
      # render :layout=>"main"
    # elsif params[:id].to_i==57      
      # render :layout=>"all_teams"
    # end
#     
    
    render :layout=>"main"
  end
  
  #娉ㄥ唽椤甸潰
  def register
    redirect_to :controller=>"users", :action=>"new"
  end
  
  def companies
    @provinces = Province.find(:all)
    
    @province = Province.find(params[:province]) if params[:province]
    @organizers = @province.organizers if params[:province]
    
    @organizer = Organizer.find(params[:school]) if params[:school]
    @teams = TeamTable.paginate :page=>params[:page], :per_page=>10, :conditions=>"realunitid=#{params[:school]}" if params[:school]
    
    conditions = []
    conditions << "companyname like '%#{params[:name]}%'" if params[:name] && params[:name].size > 0
    conditions << "realunitid =#{params[:realunitid]}" if params[:realunitid] && params[:realunitid].size > 0
    
    if conditions.size == 0
      @companies = TeamTable.paginate :page=>params[:page], :order=>"account desc, id desc", :per_page => 10
    else
      @companies = TeamTable.paginate :page=>params[:page], :order=>"account desc, id desc", :per_page => 1000, :conditions=>"#{conditions.join('and')}"
    end
    
    @title = "绮捐嫳鍥㈤槦"
  end
  
  def users
    if params[:name] && params[:name].size > 0
      @users = User.paginate :page=>params[:page], :order=>"id desc", :per_page=>1000, :conditions=>"nickname like '%#{params[:name]}%'"
    else  
      @users = User.paginate :page=>params[:page], :order=>"id desc", :per_page=>10
    end
    
    @title = "閫夋墜椋庨噰"
  end
  
  #鏄剧ず鏌愪釜鐢ㄦ埛鐨勮祫鏂�
  def user
    @user = User.find(params[:id])
    
    members = TeamMember.find(:all, :conditions=>"user_id = #{params[:id]}")
    ids = (members.collect { |m| m.team_id }.uniq<<-1).join(',')
    @companies = TeamTable.find(:all, :conditions=>"id in (#{ids})")
    
    @title = "閫夋墜椋庨噰"
  end
  
  def showgroup
    @group = Newsgroup.find(params[:id])
     @actives = Blog.find_by_sql("select *, count(company_id) c from blogs group by company_id order by c desc limit 10")
    @most_comments = Blog.find_by_sql("select blogs.*, count(blog_comments.blog_id) c from blogs, blog_comments where blogs.id = blog_comments.blog_id group by blog_comments.blog_id order by c desc limit 10")
    render :layout=>"blogs_now"
  end
  
  def shownews
    if (params[:group])
      @group = Newsgroup.find(params[:group])
    end
    @news = News.find(params[:id])
  if params[:group].to_i==65
    render :layout=>"channel"
  elsif params[:group].to_i==62
    render :layout=>"channel_62"
  elsif params[:group].to_i==63
   render :layout=>"channel_63"
  elsif params[:group].to_i==64
    render :layout=>"channel_64"
  end
  render :layout=>"main" 
  end
  
  def contact
  	case request.method
  	when :post
  	  from = params[:email]
  	  subject = params[:subject]
  	  body = params[:body]
  	  BigsaiMail.deliver_contact_us(from, subject, body)
  	  @message = "璋㈣阿浣犵殑鍙嶉, 鎴戜滑灏嗗敖蹇鐞嗕綘鐨勬剰瑙佸拰寤鸿銆�"
  	  flash[:notice]= @message  	  
    end
  end
  
  #鐢ㄦ埛涓績
 
  
  def new
    render :layout=>false
  end
  
  def index_new
    render :layout=>false 
  end
  
  def hots
    @games = Game.find(:all, :conditions=>"hot=1", :order=>"id desc")
  end
  
  def course
    user = session[:user]
    if !user.is_paid
      flash[:notice] = "鍙湁瑕佹寮忓弬鍔犵鐞嗗垱鏂版瘮璧涚殑閫夋墜鎵嶈兘瑙傜湅鏈绋�. 璇风粰浣犵殑甯愬彿鎴栦綘鍥㈤槦鐨凜EO甯愬彿鍏呭��1000鑳滃竵(100鍏�)浠ヤ究鍙傚姞绠＄悊鍒涙柊姣旇禌鍜岀儹韬禌"
      redirect_to :controller=>"center", :action=>"recharge"
      return
    end
    @course_id= params[:id]
  end 
  
  def hand1
    render :layout=>"center"
  end
  
  def add_hand1
    c = CompanyContest.new
    team = TeamTable.find(params[:teamid]) rescue nil
    if !team
      flash[:notice] = "鎵嬪姩娣诲姞澶辫触"
      render :action=>"hand1", :layout=>"center"
      return
    end
    c.company_id = params[:teamid]
    c.contest_id = 4
    begin
    c.save
    rescue Exception=>err
      flash[:notice] = err.to_s
      render :action=>"hand1", :layout=>"center"
      return
    end
    flash[:notice] = "鎵嬪姩娣诲姞鎴愬姛"
    render :action=>"hand1", :layout=>"center"
  end
  
  def add_hand2
    user = User.find(params[:userid]) rescue nil
    if !user || !user.team_table
      flash[:notice] = "鎵嬪伐娣诲姞澶辫触"
      render :action=>"hand1", :layout=>"center"
      return
    end
    
    c = CompanyContest.new
    c.contest_id = 4
    c.company_id = user.team_table.id
    begin
      c.save
    rescue Exception => err
      flash[:notice] = err.to_s
      render :action=>"hand1", :layout=>"center"
      return
    end
    
    flash[:notice] = "鎵嬪姩娣诲姞鎴愬姛"
    render :action=>"hand1", :layout=>"center"
  end
  
  def make_group
    teams = TeamTable.find_by_sql("select team_table.* from company_contest, team_table, users where company_contest.company_id = team_table.id and team_table.user_id = users.id and company_contest.contest_id = 4 and users.id >= 15253 order by rand()")
    
    seeds = TeamTable.find_by_sql(
      %q!
        select cashrequests.amount, team_table.* 
from company_contest, team_table, users, cashrequests
where company_contest.company_id = team_table.id and team_table.user_id = users.id
and company_contest.contest_id = 4 and users.id >= 15253 and cashrequests.user_id = users.id and cashrequests.amount> 50
group by cashrequests.user_id
order by users.id 
      !)
      
    games = Section.find(7).games
    
    _make_group(teams, seeds, games)  
  end
  
  def init_8
    for game in Section.find(10).games
      for user in game.users
        p user.id
        State.init_state(user.id, game.id)
      end
    end
    
    file = File.new('public/9F.xml', 'r')
    doc = REXML::Document.new file
    for game in Section.find(10).games
      i = 0
      REXML::XPath.each( doc, "//data/row") { |element|         
        p "----------get decision-----------"
        period = game.periods[i]
        for user in game.users
          decision = RawDecision.new
          decision.game_id = game.id
          decision.user_id = user.id
          decision.period_id = period.id
          for child in element.children
            next if ['id', 'game_id', 'user_id', 'period_id'].include?(child.name)
            decision[child.name] = child.text
          end
          decision.save
          
          p "decision check"
          p game.id
          p period.id
          p user.id        
          Decision_check::deci_check game.id, period.id, user.id
        end    
        p "----------simulate-----------"
        Decision.simulate(period.id, true)
        
        i+=1
      } 
    end
    file.close
  end
  
  def init_8_
    for game in Section.find(10).games
      for user in game.users
        State.init_state(user.id, game.id)
      end
    end
    
    file = File.new('public/9F.xml', 'r')
    doc = REXML::Document.new file
    for game in Section.find(10).games
      p "game id :#{game.id}"
      0.upto(7) do |i|
        p "period  :#{i}"
        period = game.periods[i]
        for user in game.users
            p "user #{user.id}"
            decision = RawDecision.find(:first, :conditions=>"game_id = #{game.id} and user_id = #{user.id} and period_id = #{period.id}")
            decision.destroy if decision
            decision = Decision.find(:first, :conditions=>"game_id = #{game.id} and user_id = #{user.id} and period_id = #{period.id}")
            decision.destroy if decision
            decision = RawDecision.new
            REXML::XPath.each( doc, "//data/row") { |element|         
              #鎻愪氦鍐崇瓥
              decision.game_id = game.id
              decision.user_id = user.id
              decision.period_id = period.id
              for child in element.children
                next if ['id', 'game_id', 'user_id', 'period_id', 'remark'].include?(child.name)
                decision[child.name] = child.text
              end
            }   
            decision.save
            decision.remark = Decision_check::deci_check game.id, period.id, user.id
            decision.save
            Decision.update_all "remark='#{@rep}'", "user_id=#{user.id} and game_id=#{game.id} and period_id=#{period.id}"
        end
        p "----------simulate-----------"
        Decision.simulate(period.id, true)
      end
    end
    file.close
    doc.close
  end
  
  def get_candidates
#    file = File.open('d:\group.txt')
#    groups = file.read
#    for group in groups.split(',')
#    	#p group.strip
#    	c = Candidate.new
#    	c.id = group.strip
#    	c.save
#    end

    for game in Section.find(10).games
      period = Period.find(:first, :conditions=>"game_id = #{game.id} and flag=1", :order=>"id desc")
      states = State.find(:all, :conditions=>"game_id = #{game.id} and period_id=#{period.id}")
      states.sort!{|a, b| a.score <=> b.score}
      for state in states.reverse[0, 6]
        c = Candidate.new
        c.id = state.user_id
        c.login = state.user.login
        c.nick = state.user.nickname
        c.save
      end
    end
  end
  
  def get_school
    for c in Candidate.find(:all)
      user = User.find(c.id)
      p user.id
      team = user.team_table
      if team
        c.school = team.organizer.id if team.organizer
        c.schoolname = team.organizer.name if team.organizer
        c.team_id = team.id
        c.save
      end
    end
  end
  
  def make_group_2
    i = 0
    games = Section.find(10).games
    for user in Candidate.find(:all)
      p user.id
      game = games[i]
      i += 1
      i = 0 if i >= games.size
      g = UserGame.new
      g.user_id = user.id
      g.game_id = games[i].id
      g.allow = 3
      g.sign_time = Time.new
      g.save
      
      user.game_id = games[i].id
      user.save
    end
  end
  
  def temp
    @works = Work.find(:all,:conditions=>"(recommen=32609)")
  end
  
    
  def tiny
  end

#
#select users.id, users.nickname, users.login, team_table.id, team_table.companyname 
#from company_contest, team_table, users
#where company_contest.company_id = team_table.id and team_table.user_id = users.id
#and company_contest.contest_id = 4 and users.id >= 15253
#order by users.id
private
  def _make_group(teams, seeds, games)
    p teams.size
    p seeds.size
    p games.size
    groups = {}
    
    #鍏堟寫鍑哄鐞嗙瀛愰槦
    seeds = []
    teams.collect {|team|
      c = Cashrequest.count("user_id = #{team.user_id} and status = 1 and amount > 40")  
      seeds << team if c > 0
    }
    teams = teams - seeds
    
    1.upto(games.size) do |i|
      groups[games[i-1]] = []
    end
    
    while seeds.size > 0
      1.upto(games.size) do |i|
        groups[games[i-1]] << seeds[0] if seeds.size > 0
        seeds.delete_at(0)
      end
    end
    
    while teams.size > 0
      games.size.downto(1) do |i|
        groups[games[i-1]] << teams[0] if teams.size > 0
        teams.delete_at(0)
      end 
    end
    
   
    1.upto(games.size) do |i|
      p groups[games[i-1]]
      for team in groups[games[i-1]] 
        g = UserGame.new
        g.user_id = team.user_id
        g.game_id = games[i-1].id
        g.allow = 3
        g.sign_time = Time.new
        g.save
      end
    end
  end
end
