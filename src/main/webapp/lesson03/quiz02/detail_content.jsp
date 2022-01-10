<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>

<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>
<section>
	<h2>곡 정보</h2>
	<div class="border border-success p-3">
		<%
		String title = request.getParameter("title");
		int id = Integer.parseInt(request.getParameter("id"));
		for (Map<String, Object> map : musicList) {
			if ( map.get("title").equals(title) ||  (int) map.get("id") == id) {
				// (int) map.get("id") == id ||
		%>

		<div class="d-flex">
			<div class="mr-3">
				<img src="<%=map.get("thumbnail")%>" width=150 height=150>
			</div>

			<div>
				<h1><%=musicInfo.get("title")%></h1>
				<span class="text-success font-weight-bold d-block mb-3"><%=map.get("singer")%></span>
				<span class="text-secondary d-block"><span class="mr-5">앨범</span><%=map.get("album")%></span>
				<span class="text-secondary d-block"><span class="mr-5">재생시간</span><%=map.get("time")%></span>
				<span class="text-secondary d-block"><span class="mr-5">작곡가</span><%=map.get("composer")%></span>
				<span class="text-secondary d-block"><span class="mr-5">작사가</span><%=map.get("lyricist")%></span>
			</div>
		</div>

		<%
		}
		}
		%>

	</div>

	<p>
	<h5>가사</h5>
	<hr>
	가사 정보 없음
	</p>

</section>